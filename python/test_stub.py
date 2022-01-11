from typing import TYPE_CHECKING
import test_module

print(test_module.sub_module.test_func("world"))

if TYPE_CHECKING:
    reveal_type(test_module.sub_module.test_func)
