contract A {
    uint x;
    fallback() external { x = 1; }
}
contract C is A {
    fallback() external { x = 2; }
}
