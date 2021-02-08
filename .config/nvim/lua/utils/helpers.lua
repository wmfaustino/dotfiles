local test = {}

function is_table(t)
    if type(t) ~= 'table' then
        error('options should be a type of "table"')
        return
    end
end

function exists_dir(path)
   return os.rename(path, path)
end

return exists_dir
