return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      dap.configurations.cs = {
        {
          type = 'unity',
          request = 'attach',
          name = 'Unity Editor',
          path = '/Users/mccall/projects/mapdisplay-for-unity/MapVisPluginUnityProject/Library/EditorInstance.json'
        }
      }
    end

  }
}
