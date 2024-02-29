// scripts/getLatestBlock.js
async function main() {
  const blockNumber = await ethers.provider.getBlockNumber();
  console.log("The latest block number is:", blockNumber);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
