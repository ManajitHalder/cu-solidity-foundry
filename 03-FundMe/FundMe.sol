// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// interface AggregatorV3Interface {
//     function decimals() external view returns (uint8);

//     function description() external view returns (string memory);

//     function version() external view returns (uint256);

//     function getRoundData(
//         uint80 _roundId
//     )
//         external
//         view
//         returns (
//             uint80 roundId,
//             int256 answer,
//             uint256 startedAt,
//             uint256 updatedAt,
//             uint80 answeredInRound
//         );

//     function latestRoundData()
//         external
//         view
//         returns (
//             uint80 roundId,
//             int256 answer,
//             uint256 startedAt,
//             uint256 updatedAt,
//             uint80 answeredInRound
//         );
// }

contract FundMe {
    uint256 public minimumUsd = 5;

    function fund() public payable {
        require(msg.value >= 1, "Didn't send enough ETH");
    }

    // function withdraw() public {}

    // Gets price of ETH in USD from chainlink data feeds using network "Ethereum Sepolia"
    function getPriceOfEthInUsd() public pure returns (uint256) {
        // Address: 0x694AA1769357215DE4FAC081bf1f309aDC325306 (Sepolia Testnet)

        return 0;
    }

    // Converts USD to ETH
    function getConversionRateOfUsdToEth() public pure returns (uint256) {
        return 0;
    }

    function getVersion() public view returns (uint256) {
        return
            AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306)
                .version();
    }
}
