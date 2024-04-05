
// SupplyChain.sol
contract SupplyChain {
    struct Component {
        address manufacturer;
        string name;
        uint256 quantity;
    }

    mapping(uint256 => Component) public components;
    uint256 public componentCount;

    function addComponent(string memory name, uint256 quantity) public {
        components[componentCount] = Component(msg.sender, name, quantity);
        componentCount++;
    }
}
