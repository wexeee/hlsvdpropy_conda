if [[ "$OSTYPE" == "darwin"* ]]; then
  python setup.py bdist_wheel --universal --plat-name macosx_10_9_x86_64
else
  python setup.py bdist_wheel --universal --plat-name manylinux1_x86_64
fi

$PYTHON -m pip install dist/hlsvdpro*.whl --no-deps --ignore-installed --no-cache-dir -vvv

