local home = os.getenv("HOME")
local jdtls = require("jdtls")

-- 1) launcher.jar
-- local launcher = "/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_1.7.100.v20251014-1222.jar"
local jdtls_base = "/usr/share/java/jdtls"
local launcher_glob = jdtls_base .. "/plugins/org.eclipse.equinox.launcher_*.jar"
local launcher = vim.fn.glob(launcher_glob)

if launcher == nil or launcher == "" then
  error("JDTLS launcher not found at " .. launcher_glob)
end
-- ⚠️ ПОДСТАВЬ ТОЧНОЕ ИМЯ ФАЙЛА, которое найдет команда grep

-- 2) config_linux
local config_dir = "/usr/share/java/jdtls/config_linux"

-- 3) workspace (обязательно уникальный для каждого проекта)
local workspace = home .. "/.cache/jdtls/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

-- 4) Java Debug Adapter bundle
local java_debug_bundle = "/usr/share/java-debug/com.microsoft.java.debug.plugin.jar"

local config = {
  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xms1g",

    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",

    "-jar", launcher,
    "-configuration", config_dir,
    "-data", workspace
  },

  root_dir = require("jdtls.setup").find_root({ "pom.xml", "build.gradle", ".git" }),

  init_options = {
    bundles = {
      java_debug_bundle,
    }
  }
}

jdtls.start_or_attach(config)

