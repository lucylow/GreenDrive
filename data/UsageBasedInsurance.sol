```solidity
// UsageBasedInsurance.sol
contract UsageBasedInsurance {
    mapping(address => uint256) public insurancePremiums;

    function calculatePremium(address vehicle, uint256 distanceTraveled) public {
        // Calculate premium based on distance traveled
        uint256 premium = distanceTraveled * 0.001 ether; // Example calculation, adjust as needed
        insurancePremiums[vehicle] = premium;
    }

    function payPremium(address vehicle) public payable {
        require(msg.value == insurancePremiums[vehicle], "Incorrect premium amount");
        // Process payment
    }
}
