return {
  require("lazy").setup({
    {
      "barrett-ruth/live-server.nvim",
      build = "yarn global add live-server",
      config = true,
    },
  }),
}
