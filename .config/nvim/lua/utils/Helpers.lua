local Helpers = {}

Helpers['is_table'] = function (t)
    if type(t) ~= 'table' then
        error('options should be a type of "table"')
        return
    end
end

Helpers['exists_dir'] = function (path)
       return os.rename(path, path)
    end

return Helpers
