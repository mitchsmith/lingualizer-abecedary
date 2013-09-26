require 'open-uri'
namespace :segments do
  desc "TODO"
  task seed_segments: :environment do
    # @infile = Rails.root.join('scratch','table1.html')
    @doc = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/IPA'), nil, 'UTF-8')
    @pulmonic = @doc.css('a[title="Pulmonic consonant"]')[0].ancestors('table')[0]
    @nonpulmonic = @doc.css('a[title="Non-pulmonic consonant"]')[0].ancestors('table')[0]
    @affricate = @doc.css('a[title="Affricate consonant"]')[0].ancestors('table')[0]
    @coarticulated = @doc.css('a[title="Co-articulated consonant"]')[0].ancestors('table')[0]
    @vowel = @doc.css('a[title="Close front unrounded vowel"]')[0].ancestors('table')[0] 
    
    @counter = 1

    @pulmonic.css('span.IPA>a').each do |a|
      Segment.create_or_update(:id => @counter, :description => a.attr('title'), :ipa_symbol => a.inner_html.encode('utf-8'), :ipa_type => 'Pulmonic Consonant')
      @counter += 1
    end

    @nonpulmonic.css('span.IPA>a').each do |a|
      Segment.create_or_update(:id => @counter, :description => a.attr('title'), :ipa_symbol => a.inner_html.encode('utf-8'), :ipa_type => 'Non-pulmonic consonant')
      @counter += 1
    end

    @affricate.css('span.IPA>a').each do |a|
      Segment.create_or_update(:id => @counter, :description => a.attr('title'), :ipa_symbol => a.inner_html.encode('utf-8'), :ipa_type => 'Affricate consonant')
      @counter += 1
    end

    @coarticulated.css('span.IPA>a').each do |a|
      Segment.create_or_update(:id => @counter, :description => a.attr('title'), :ipa_symbol => a.inner_html.encode('utf-8'), :ipa_type => 'Co-articulated consonant')
      @counter += 1
    end

    @vowel.css('span.IPA>a').each do |a|
      Segment.create_or_update(:id => @counter, :description => a.attr('title'), :ipa_symbol => a.inner_html.encode('utf-8'), :ipa_type => 'Vowel')
      @counter += 1
    end

  end

end
