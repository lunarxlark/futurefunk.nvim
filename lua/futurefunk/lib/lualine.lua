local P = require("futurefunk.palette")

return {
  normal = {
    a = { bg = P.night.shade, gui = "bold" },
    b = { bg = P.night.base },
  },

  insert = {
    a = { fg = P.right.shade, bg = P.yellow.shade, gui = "bold" },
    b = { fg = P.orange.shade, bg = P.yellow.base },
  },

  command = {
    a = { bg = P.night.shade, gui = "bold" },
    b = { bg = P.night.base },
  },

  visual = {
    a = { fg = P.red.shade, bg = P.magenda.shade, gui = "bold" },
    b = { fg = P.red.shade, bg = P.magenda.base },
  },

  replace = {
    a = { bg = P.orange.shade, gui = "bold" },
    b = { bg = P.orange.base },
  },

  terminal = {
    a = { bg = P.night.shade, gui = "bold" },
    b = { bg = P.night.base },
  },

  inactive = {
    a = { bg = P.night.shade },
    b = { bg = P.night.base, gui = "bold" },
  },
}
