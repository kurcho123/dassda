Config = Config or {}

Config.ItemTiers = 1

--33% on each to get money/an item or nothing
Config.RewardTypes = {
    [1] = {
        type = "item"
    },
    [2] = {
        type = "money",
    },
    [3] = {
        type = "nothing",
    }
}

--rewards for small trashcans
Config.RewardsSmall = {
        [1] = {item = "lockpick", minAmount = 1, maxAmount = 1},
        [2] = {item = "rolling_paper", minAmount = 1, maxAmount = 1},
        [3] = {item = "plastic", minAmount = 1, maxAmount = 1},
}