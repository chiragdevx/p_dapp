const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Dwitter", function () {
  it("Should return the new greeting once it's changed", async function () {
    const Dwitter = await ethers.getContractFactory("Dwitter");
    const dwitter = await Dwitter.deploy();
    await dwitter.deployed();
//______________day1
    // expect(await dwitter.name()).to.equal("chirag");

    // const setGreetingTx = await dwitter.setName("hi there");

    // // wait until the transaction is mined
    // await setGreetingTx.wait();

    // expect(await dwitter.name()).to.equal("hi there");

  //___________day2
  



  });
});
