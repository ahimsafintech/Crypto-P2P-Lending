// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract LoanRequest{
	uint public loan_offer_count=0;

	struct Loan_Offer{
		//Loan id
		uint loan_id;

		//Lending currency
		uint256 lend_currency;

		//Amount to lend (in crypto native currency selected above)
		uint256 max_lend_amount;
		//how much is the minimum amount of total committed value can be lent
		uint256 min_lend_amount;

		uint256 select_collateral_currency;
		uint256 loan_to_value_percentage;
		
		//Interest Rate
		uint256 set_interest_rate;

		//Loan Duration in Days
		uint256 min_loan_duration_days;	
		uint256 max_loan_duration_days;
	}

	mapping (uint=> Loan_Offer) public loans;

	constructor() public{
		//Either we need to use actual values or from front-end or just do nothing
		//create_loan_offer(_lend_currency, _max_lend_amount, _min_lend_amount, _select_collateral_currency,
		  //_loan_to_value_percentage, _set_interest_rate, _min_loan_duration_days,_max_loan_duration_days);
	}

	function create_loan_offer(
		uint256  _lend_currency, 
		uint256  _max_lend_amount, 
		uint256  _min_lend_amount,
		uint256  _select_collateral_currency,
		uint256  _loan_to_value_percentage,
		uint256  _set_interest_rate,
		uint256  _min_loan_duration_days,
		uint256  _max_loan_duration_days
	) public {
		loan_offer_count ++;
		loans[loan_offer_count] = Loan_Offer(loan_offer_count, _lend_currency, _max_lend_amount, _min_lend_amount, _select_collateral_currency,
		  _loan_to_value_percentage, _set_interest_rate, _min_loan_duration_days,_max_loan_duration_days);
	}
}