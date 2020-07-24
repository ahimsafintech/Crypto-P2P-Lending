const LoanRequest = artifacts.require("./LoanRequest.sol");

module.exports = function(deployer) {
  deployer.deploy(LoanRequest);
};