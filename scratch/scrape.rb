

@doc = Nokogiri::HTML(File.open("table1.html"))

#@doc.css('span.IPA>a').each do |a|
#    printf "%s\t%s\n" % [a.text, a.attr('title')]
#end

@collection = []
@doc.css('span.IPA>a').each_with_index do |a, index|
    # @collection << {:id => index + 1, :description => a.attr('title'), :ipa_symbol => a.text }
    Segment.create_or_update(:id => index + 1, :description => a.attr('title'), :ipa_symbol => a.text)
end

