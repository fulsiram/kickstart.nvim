local sanitize_filename = function(filename)
  return filename:gsub('^[^.]*', 'NDA')
end

return {
  'vyfor/cord.nvim',
  build = ':Cord update',
  opts = {
    text = {
      workspace = '',
      viewing = function(opts)
        return string.format('Viewing %s', sanitize_filename(opts.filename))
      end,
      editing = function(opts)
        return string.format('Editing %s', sanitize_filename(opts.filename))
      end,
    },
  },
}
