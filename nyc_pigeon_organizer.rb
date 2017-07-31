def nyc_pigeon_organizer(data)
  result = {}
  data.each do |desc, hash|
    hash.each do |keys, array|
      array.each do |elements|

        if result.include?(elements) == false
          result[elements] = {}
        end

        if result[elements].include?(desc) == false
          result[elements][desc] = []
        end

        if result[elements][desc].include?(keys) == false
          result[elements][desc] << keys.to_s
        end

      end
    end
  end
  result
end
