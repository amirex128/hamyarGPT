import ast
import importlib.util
from pathlib import Path

path = Path(__file__).with_name('pdf_reader.py')
source = path.read_text(encoding='utf-8')
ast.parse(source)
spec = importlib.util.spec_from_file_location('pdf_reader', path)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
split = module.ReaderApp._split
assert split('اول\nخط دوم\n\nپاراگراف دوم') == ['اول خط دوم', 'پاراگراف دوم']
assert split('  سلام  \n\n\n') == ['سلام']
print('offline reader tests: OK')
