const hre = require("hardhat")

async function main() {
    await hre.run("compile");

    //deployment code
    const SimpleStorage = await hre.ethers.getContractFactory("SimpleStorage")
    const simpleStorage = await SimpleStorage.deploy()
    await simpleStorage.deployed()
    const transactionResponse = await simpleStorage.store(1)
    const transactionReceipt = await transactionResponse.wait()
    console.log(transactionReceipt)
}

main().catch((error) => {
    console.error(error)
    process.exitCode = 1
});