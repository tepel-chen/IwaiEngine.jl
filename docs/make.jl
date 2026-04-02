pushfirst!(LOAD_PATH, joinpath(@__DIR__, ".."))

using Documenter
using IwaiEngine

makedocs(
    sitename = "IwaiEngine.jl",
    modules = [IwaiEngine],
    format = Documenter.HTML(),
    pages = [
        "Home" => "index.md",
        "Guides" => [
            "Basics" => "guides/basics.md",
            "Inheritance" => "guides/inheritance.md",
            "Security" => "guides/security.md",
        ],
        "API" => "api.md",
    ],
)

deploydocs(repo = "github.com/tepel-chen/IwaiEngine.jl.git")
