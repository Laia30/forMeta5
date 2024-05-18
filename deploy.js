async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);

    const FunctionsAndErrors = await ethers.getContractFactory("FunctionsAndErrors");
    const functionsAndErrors = await FunctionsAndErrors.deploy();

    console.log("FunctionsAndErrors contract deployed to:", functionsAndErrors.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
