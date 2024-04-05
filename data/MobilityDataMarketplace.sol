
// MobilityDataMarketplace.sol
contract MobilityDataMarketplace {
    struct DataRecord {
        address provider;
        uint256 timestamp;
        bytes32 dataHash;
        uint256 price;
    }

    mapping(bytes32 => DataRecord) public dataRecords;

    function publishData(bytes32 dataHash, uint256 price) public {
        require(dataRecords[dataHash].provider == address(0), "Data already published");
        dataRecords[dataHash] = DataRecord(msg.sender, block.timestamp, dataHash, price);
    }

    function purchaseData(bytes32 dataHash) public payable {
        DataRecord memory record = dataRecords[dataHash];
        require(record.provider != address(0), "Data not found");
        require(msg.value >= record.price, "Insufficient funds");
        // Transfer data to the buyer
        // Transfer payment to the data provider
    }
}
