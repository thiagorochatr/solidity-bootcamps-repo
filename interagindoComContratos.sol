// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract InfoFeed {
  uint256 price;

  function info() public view returns (uint256 ret_) {
    return price;
  }
  
  function setInfo(uint256 new_price) public {
      price = new_price;
  }
}


contract Consumer {
  InfoFeed feed;

  constructor(InfoFeed _feed) {
    feed = _feed;
  }
    
  function callFeed() public view returns (uint256) {
    return feed.info();
  }
}