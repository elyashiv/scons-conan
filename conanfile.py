from conan import ConanFile


class app(ConanFile):
    name = "app"
    version = "0.1"
    settings = "os", "compiler", "build_type", "arch"
    requires = "catch2/3.13.0"

    generators = "SConsDeps"
