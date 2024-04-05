
// VehicleIdentity.sol
contract VehicleIdentity {
    mapping(address => bytes32) public vehicleIdentities;

    function registerVehicle(address vehicleAddress, bytes32 vid) public {
        require(vehicleIdentities[vehicleAddress] == 0, "Vehicle already registered");
        vehicleIdentities[vehicleAddress] = vid;
    }

    function getVehicleIdentity(address vehicleAddress) public view returns (bytes32) {
        return vehicleIdentities[vehicleAddress];
    }
}
