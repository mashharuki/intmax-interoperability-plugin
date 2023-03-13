// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./OfferManager.sol";

contract OfferManagerTest is OfferManager {
    /**
     * This function registers a new offer.
     * @param maker is the maker's account.
     * @param makerAssetId is the asset ID a maker sell to taker.
     * @param makerAmount is the amount a maker sell to taker.
     * @param taker is the taker's account.
     * @param takerTokenAddress is the token address a taker should pay.
     * @param takerAmount is the amount a taker should pay.
     */
    function testRegister(
        address maker,
        uint256 makerAssetId,
        uint256 makerAmount,
        bytes32 taker,
        address takerTokenAddress,
        uint256 takerAmount
    ) external returns (uint256 flagId) {
        return
            _register(
                maker,
                makerAssetId,
                makerAmount,
                taker,
                takerTokenAddress,
                takerAmount
            );
    }

    /**
     * This test function can activate the flag without actually making the transfer.
     * @param offerId is the ID of the offer.
     */
    function testActivate(uint256 offerId) external returns (bool) {
        _activate(offerId);

        return true;
    }
}