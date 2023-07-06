const ethers = require("hardhat");

async function main() {
  const currentTimestampInSeconds:number = Math.round(Date.now() / 1000);
  const unlockTime:number = currentTimestampInSeconds + 60;

  const lockedAmount = ethers.parseEther("0.001");

  const lock = await ethers.deployContract("Lock");
  await lock.waitForDeployment();

  console.log(
    `Lock with ${ethers.formatEther(
      lockedAmount
    )}ETH and unlock timestamp ${unlockTime} deployed to ${lock.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
