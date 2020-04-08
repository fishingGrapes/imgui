project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("binaries/" .. outputdir .. "/%{prj.name}")
    objdir ("binaries/intermediates/" .. outputdir .. "/%{prj.name}")


    --Common Files
    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }
    
    filter "system:windows"
        cppdialect "C++17"
        systemversion "latest"
        staticruntime "on"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter  "configurations:Release" 
        runtime "Release"
        optimize "on"
    
    filter "configurations:Dist"
        runtime "Release"
        optimize "on"

