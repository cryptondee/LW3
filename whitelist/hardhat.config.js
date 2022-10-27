require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({ path: ".env" });

const RPC_URL = process.env.RPC_URL;
const PK = process.env.PRIVATE_KEY;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    goerli: {
      url: RPC_URL,
      accounts: [PK],
    },
  },
};
