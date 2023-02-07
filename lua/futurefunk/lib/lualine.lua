local P = require("futurefunk.palette")

return {
  normal = {
    a = { bg = P.blue.shade, gui = "bold" },
    b = { bg = P.blue.base },
  },

  insert = {
    a = { fg = P.black.tint, bg = P.yellow.shade, gui = "bold" },
    b = { fg = P.black.base, bg = P.yellow.base },
  },

  command = {
    a = { fg = P.white.base, bg = P.green.shade, gui = "bold" },
    b = { bg = P.green.base },
  },

  visual = {
    a = { bg = P.red.shade, gui = "bold" },
    b = { bg = P.red.base },
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
