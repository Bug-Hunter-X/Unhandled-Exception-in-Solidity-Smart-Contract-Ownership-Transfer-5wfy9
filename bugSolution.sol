function transferOwnership(newOwner) {
  require(msg.sender == _owner, "Ownable: caller is not the owner");
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}