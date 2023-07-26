async function main() {
  // fetch contract to deploy
  const Token = await ethers.getContractFactory("Token");

  // deploy contract
  const token = await Token.deploy('Dapp University', 'DAPP', '1000000');
  await token.deployed();
  console.log(`Token deployed to: ${token.address}\n`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);  
  });
  