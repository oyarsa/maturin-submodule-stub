# maturin-submodule-stub

Maturin isn't packaging submodule stubs along with the rest of the code when using 
the default configuration. To demonstrate that, run the `run_test.sh` file at the repository root.
It will:

1. Build the maturin module from `rust`, then test the module and type checking from there.
   This will work, since the module was installed in editable module and the script will go
   directly to the original directory.
2. Install the maturin module as a dependency from `python`. The script will successfully 
   execute because the module was installed correctly, but type-checking will fail. Listing
   the files in the `site-packages/test_module` directory shows that the `.pyi` files were
   not moved there.
