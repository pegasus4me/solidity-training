import { HardhatUserConfig } from "hardhat/config";
require("@nomicfoundation/hardhat-toolbox");

interface rpc {
  localHost : string | undefined 
}

const config: HardhatUserConfig = {
  solidity: "0.8.18",
  networks :{
    // localhost: "http://127.0.0.1:8545/",
  }
};

export default config;
