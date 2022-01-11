use pyo3::prelude::*;
use pyo3::wrap_pymodule;

#[pyfunction]
fn test_func(x: Option<String>) -> PyResult<Option<String>> {
    Ok(x.map(|x| format!("Hello {}", x)))
}

#[pymodule]
fn sub_module(_py: Python, m: &PyModule) -> PyResult<()> {
    m.add_function(wrap_pyfunction!(test_func, m)?)?;
    Ok(())
}

#[pymodule]
fn test_module(_py: Python, m: &PyModule) -> PyResult<()> {
    m.add_wrapped(wrap_pymodule!(sub_module))?;
    Ok(())
}