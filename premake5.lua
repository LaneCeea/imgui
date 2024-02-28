project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "off"

    targetdir("../bin/" .. OutputDir .. "/%{prj.name}")
    objdir("../bin-int/" .. OutputDir .. "/%{prj.name}")

    files {
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imconfig.h",
        "imgui.h",
        "imgui_internal.h",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h"
    }

    filter "system:windows"
        systemversion "latest"

    ConfigurationsSetting()