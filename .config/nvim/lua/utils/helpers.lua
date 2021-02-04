function is_table(t)
    if type(t) ~= 'table' then
        error('options should be a type of "table"')
        return
    end
end

return is_table
