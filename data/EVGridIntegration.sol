
// EVGridIntegration.sol
contract EVGridIntegration {
    mapping(address => uint256) public energyCredits;

    function chargeVehicle(address vehicle, uint256 energyAmount) public {
        // Charge the vehicle
        energyCredits[vehicle] += energyAmount;
    }

    function sellEnergy(address vehicle, uint256 energyAmount) public {
        // Sell excess energy to the grid
        require(energyCredits[vehicle] >= energyAmount, "Insufficient energy credits");
        energyCredits[vehicle] -= energyAmount;
        // Process payment for sold energy
    }
}
