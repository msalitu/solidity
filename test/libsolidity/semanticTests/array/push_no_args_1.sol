contract C {
	uint[] array;
	uint[][] array2d;

	function f() public returns (uint) {
		uint y = array.push();
		return y;
	}

	function g(uint index, uint value) public {
		uint[] storage pointer = array2d.push();
		for (uint i = 0; i <= index; ++i)
			pointer.push();
		pointer[index] = value;
	}

	function h(uint index) public view returns (uint) {
		return array2d[array2d.length - 1][index];
	}
}
// ----
// f() -> 0
// g(uint256,uint256): 42, 64 ->
// h(uint256): 42 -> 64
