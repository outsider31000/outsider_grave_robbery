Config = {}

Config.PrayAnim = {
    { "amb_misc@world_human_pray_rosary@base",                                                            "base" },
    { "amb_misc@prop_human_seat_pray@male_b@idle_b",                                                      "idle_d" },
    { "script_common@shared_scenarios@stand@random@town_burial@stand_mourn@male@react_look@loop@generic", "front" },
    { "amb_misc@world_human_grave_mourning@kneel@female_a@idle_a",                                        "idle_a" },
    { "script_common@shared_scenarios@kneel@mourn@female@a@base",                                         "base" },
    { "amb_misc@world_human_grave_mourning@female_a@idle_a",                                              "idle_a" },
    { "amb_misc@world_human_grave_mourning@male_b@idle_c",                                                "idle_g" },
    { "amb_misc@world_human_grave_mourning@male_b@idle_c",                                                "idle_h" },
}


Config.DiggingTimer = 20 --seconds
Config.Dig = {
    shovel = `p_shovel02x`,
    anim = { "amb_work@world_human_gravedig@working@male_b@idle_a", "idle_a" },
    bone = "skel_r_hand",
    pos = { 0.06, -0.06, -0.03, 270.0, 165.0, 17.0 },
}


Config.Prompts = {
    Prompt1 = 0x05CA7C52,
    Prompt2 = 0x156F7119,
}

Config.Texts = {
    Prompt1 = "Dig",
    Prompt2 = "Pray",
    GraveRobbery = "Grave Robbery",
    GraveDisplay = "Grave:",
    CantDoThat = "You cant do that now!",
    GraveRobbed = "Grave is already robbed!",
    NoShovel = "No shovel item!",
    FoundItem = "You have found some item!",
}

Config.Textures = {
    cross = { "scoretimer_textures", "scoretimer_generic_cross" },
    locked = { "menu_textures", "stamp_locked_rank" },
    tick = { "scoretimer_textures", "scoretimer_generic_tick" },
    money = { "inventory_items", "money_moneystack" },
    alert = { "menu_textures", "menu_icon_alert" },
}

Config.Lines = {
    "You have found nothing the person buried here was poor as hell",
    "All that hard work for nothing damn fool",
    "Why not be a farmer cant find shit with your luck",
    "You thought it was easy? rob somone alive ",
    "God is watching you and has punished you ,just like he pusnished the man in here your next..."

}

Config.UseHours = true            -- if true it will use hours meaning only can be robbed at night
Config.Hours = { 21, 07 }         -- 9pm to 7am is allowed to make a robbery
Config.synSociety = false         -- if you have jobalerts leave false, if you only have syn society then leave true and who is on duty will be alerted leave po;icemaan to false
Config.outsider_policeman = false -- if you have jobalerts leave this to false if you only have policeman leave this true and who is on duty will be alerted, leve syn to false
Config.outsider_jobalert = {      -- if you have ob alerts put syn and policeman to false
    usealert = true,              -- use job alerts ?
    command = "graverobbery"      -- command to use for job alerts that's in config of job alerts
}

Config.JobsToAlert = { "police", "undertaker" } -- if you use syn or policeman add jobs here, if you use job alerts you can ignore this

Config.GraveRobberyCooldown = 10                -- after 10 minutes grave can be robbed again

-- use this table to organise items and not duplicate code
local graveItems = {
    graveOne = {                                                                                          -- just a name for organization
        { item = "ancientcoin",  label = "An Ancient Coin",   chance = 0.4, amount = math.random(1, 3) }, -- math.random(1, 3) is the amount of items you receive between 1 and 3
        { item = "ancientcoin2", label = "An Ancient Broach", chance = 0.5, amount = math.random(1, 3) }, -- if chance is 1.0 you receive the item every time
        { item = "ancientcoin3", label = "A Ship Coin",       chance = 0.3, amount = math.random(1, 3) },
        { item = 'ancientcoin4', label = 'A Death Coin',      chance = 0.2, amount = math.random(1, 3) },
        { item = 'ancientcoin5', label = 'An Oriental Coin',  chance = 0.6, amount = math.random(1, 3) },
        { item = 'ancientcoin6', label = 'A Deer Coin',       chance = 0.8, amount = math.random(1, 3) },
    }
    -- add more here for unique graves
}

Config.Graves = {
    --Rhodes
    {
        name = "Elsie Feeney",
        coords = vector3(1282.042, -1242.295, 79.989),
        heading = 26.0788,       -- where player will face to play animation
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel", -- must have this item in your inventory to dig the grave
    },
    {
        name = "Harvey Feeney",
        coords = vector3(1280.190, -1243.406, 79.721),
        heading = 26.999,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"

    },
    {
        name = "Nettie Mae Feeney",
        coords = vector3(1277.646, -1243.937, 79.641),
        heading = 28.891,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Stephen Banks",
        coords = vector3(1273.183, -1238.915, 79.715),
        heading = 21.938,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Marietta Banks",
        coords = vector3(1275.114, -1237.997, 79.923),
        heading = 17.2695,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Charlie Banks",
        coords = vector3(1277.472, -1237.081, 80.183),
        heading = 22.858,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Joseph Dark",
        coords = vector3(1277.429, -1231.219, 80.685),
        heading = 9.5856,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1273.790, -1229.006, 80.594),
        heading = 5.973,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Papi Culo",
        coords = vector3(1270.969, -1230.913, 80.255),
        heading = 11.065,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1267.327, -1232.056, 79.946),
        heading = 16.203,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Douglas Gray",
        coords = vector3(1268.745, -1228.923, 80.280),
        heading = 15.811,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Lucille Braithwaite",
        coords = vector3(1275.525, -1220.127, 81.420),
        heading = 18.769,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Arthur Cradles",
        coords = vector3(1271.028, -1224.483, 80.772),
        heading = 15.9214,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1272.812, -1224.395, 80.905),
        heading = 16.95,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1274.721, -1223.716, 81.162),
        heading = 22.049,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1279.936, -1214.892, 81.869),
        heading = 14.358,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1275.776, -1207.828, 82.502),
        heading = 192.68,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1292.837, -1214.911, 81.841),
        heading = 358.166,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1295.810, -1215.574, 81.551),
        heading = 14.873,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1298.355, -1214.914, 81.341),
        heading = 4.81563,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1297.090, -1212.736, 81.562),
        heading = 15.6860,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1295.598, -1213.070, 81.674),
        heading = 103.038,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1294.745, -1213.792, 81.716),
        heading = 17.239,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1292.806, -1211.421, 82.019),
        heading = 19.154,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1293.655, -1210.771, 81.990),
        heading = 11.1098,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1295.177, -1210.914, 81.834),
        heading = 28.956,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "William 'Willie' Bowley",
        coords = vector3(1302.913, -1214.625, 80.995),
        heading = 14.057,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1292.054, -1209.464, 82.274),
        heading = 24.189,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1290.816, -1210.013, 82.305),
        heading = 17.146,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1296.455, -1210.326, 81.760),
        heading = 26.106,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Maggie Calloway",
        coords = vector3(-249.77, 818.89, 122.2),
        heading = 303.62,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Andrew Taint",
        coords = vector3(-239.56, 819.72, 123.74),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "August Walker",
        coords = vector3(-241.77, 827.13, 123.23),
        heading = 291.7,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Jermiah Michaels",
        coords = vector3(-239.8, 822.19, 123.66),
        heading = 289.63,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Thomas Dunn",
        coords = vector3(-245.94, 819.66, 122.74),
        heading = 298.87,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Major Marquis Warren",
        coords = vector3(-247.37, 812.04, 122.4),
        heading = 298.09,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Bridget Dunn",
        coords = vector3(-241.51, 809.03, 122.75),
        heading = 298.87,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Lucy Dunn",
        coords = vector3(-242.4, 812.29, 123.02),
        heading = 295.31,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Harriet Douglas",
        coords = vector3(-239.52, 812.97, 123.55),
        heading = 294.21,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Molly Malloy",
        coords = vector3(-236.24, 812.84, 123.95),
        heading = 296.19,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Clara Douglas",
        coords = vector3(-241.25, 816.23, 123.53),
        heading = 294.52,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Jesse James",
        coords = vector3(-242.23, 818.18, 123.37),
        heading = 294.09,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "David Douglas",
        coords = vector3(-243.06, 819.82, 123.21),
        heading = 295.12,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Mathius Dalton",
        coords = vector3(-244.42, 823.44, 122.92),
        heading = 294.1,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Magdalene Dalton",
        coords = vector3(-245.29, 825.8, 122.72),
        heading = 292.7,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Simon Dalton",
        coords = vector3(-246.14, 828.25, 122.49),
        heading = 293.48,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-959.77, -1198.75, 56.15),
        heading = 359.89,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-960.39, -1209.41, 55.03),
        heading = 4.59,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-956.82, -1209.58, 54.92),
        heading = 354.25,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-954.61, -1204.39, 55.53),
        heading = 353.07,

        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-954.22, -1193.28, 55.96),
        heading = 5.57,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-957.16, -1192.93, 56.53),
        heading = 11.05,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Henry Crenshaw",
        coords = vector3(-5446.67, -2903.56, 1.01),
        heading = 316.63,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Larry Chambers",
        coords = vector3(-5455.56, -2909.63, 0.87),
        heading = 111.25,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Philip J. Greenup",
        coords = vector3(-5456.38, -2906.22, 0.83),
        heading = 98.56,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Obediah Graves",
        coords = vector3(-5456.23, -2903.22, 0.85),
        heading = 72.29,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "James Jacob Somers",
        coords = vector3(-5460.42, -2904.91, 0.87),
        heading = 84.73,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Garreth Drury",
        coords = vector3(1284.040, -1248.166, 79.274),
        heading = 18.769,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "George Drury",
        coords = vector3(1285.61, -1246.09, 79.8),
        heading = 18.769,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1275.11, -1207.82, 82.6),
        heading = 216.98,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Thomas Downes",
        coords = vector3(-242.754, 809.985, 122.652),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-238.35, 829.778, 123.604),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-237.075, 836.024, 123.313),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-234.757, 834.201, 123.7),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-233.291, 838.043, 123.286),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-231.947, 835.544, 123.823),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-230.997, 833.305, 124.019),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-231.556, 828.577, 124.302),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-230.627, 826.584, 124.361),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-229.817, 824.115, 124.323),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-225.518, 819.972, 124.38),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Sarah Worth",
        coords = vector3(-223.099, 825.976, 124.256),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Zachariah Worth",
        coords = vector3(-224.084, 828.486, 124.329),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Sameul Worth",
        coords = vector3(-224.653, 830.701, 124.403),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Annie Worth",
        coords = vector3(-225.435, 832.465, 124.431),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Samantha Worth",
        coords = vector3(-226.616, 833.794, 124.369),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-228.103, 835.587, 124.221),
        heading = 288.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-962.658, -1208.865, 55.334),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-965.856, -1209.281, 56.017),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-961.357, -1202.715, 55.994),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-966.349, -1198.194, 57.923),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-963.115, -1198.095, 57.106),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-955.825, -1197.861, 55.448),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-960.483, -1192.214, 57.266),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-963.362, -1192.564, 57.917),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-989.646, -1202.464, 58.077),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-993.992, -1202.12, 58.21),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-996.443, -1202.187, 58.654),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Ada Stillman",
        coords = vector3(-999.817, -1203.294, 58.947),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-988.234, -1198.882, 58.553),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-995.042, -1198.432, 58.695),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Esther Sinclair",
        coords = vector3(-997.627, -1198.691, 59.095),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1002.614, -1199.728, 59.396),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1003.788, -1199.96, 59.448),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1005.668, -1200.04, 59.518),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Belle Finch",
        coords = vector3(-1008.795, -1199.261, 59.595),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1011.568, -1199.289, 59.571),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Elijah Liggons",
        coords = vector3(-1014.688, -1199.334, 59.853),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Eldon Crabbs Sr.",
        coords = vector3(-1018.058, -1199.356, 60.181),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Matilda Brines",
        coords = vector3(-1020.374, -1199.268, 60.347),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1020.346, -1203.318, 60.488),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Niles Caruthers",
        coords = vector3(-1017.411, -1203.462, 60.265),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Captain Maxwell Laskey",
        coords = vector3(-1014.392, -1203.539, 59.986),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Gertrude Barber",
        coords = vector3(-1009.963, -1203.507, 59.728),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Colonel Thurston Pope",
        coords = vector3(-989.19, -1193.067, 58.657),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Olive Shipley",
        coords = vector3(-993.398, -1193.424, 58.899),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Stanley Pollard",
        coords = vector3(-996.894, -1193.521, 59.212),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1000.137, -1193.616, 59.238),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Phyllis Shodlow",
        coords = vector3(-1000.137, -1193.616, 59.238),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1005.93, -1193.661, 59.297),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1008.337, -1193.685, 59.265),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Georgia Dobbs",
        coords = vector3(-1010.975, -1193.419, 59.149),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1014.831, -1187.953, 59.035),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Myra Lrathers",
        coords = vector3(-1012.277, -1187.984, 58.655),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Greta Van Der Linde",
        coords = vector3(-1009.512, -1188.019, 58.507),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Willie Swenson",
        coords = vector3(-1002.804, -1188.398, 58.383),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Clinton Underwood",
        coords = vector3(-1000.145, -1188.28, 58.373),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Pearl Palmer",
        coords = vector3(-997.346, -1188.31, 58.362),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-994.479, -1188.144, 58.543),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-991.242, -1187.697, 58.87),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-988.42, -1188.18, 58.757),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Freda Dunbar",
        coords = vector3(-986.58, -1182.281, 58.514),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Beatrice Picket",
        coords = vector3(-989.293, -1182.155, 58.349),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Emma Crawford",
        coords = vector3(-992.599, -1182.223, 58.149),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Minerva Pratt",
        coords = vector3(-995.05, -1182.199, 58.025),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Sameul Makepeace",
        coords = vector3(-997.629, -1182.218, 57.893),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Delilah Gaskell",
        coords = vector3(-1002.523, -1182.832, 57.841),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1005.284, -1182.629, 57.859),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Doris Mosley",
        coords = vector3(-1008.526, -1182.736, 57.930),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Rose Beasley",
        coords = vector3(-1012.157, -1182.931, 58.158),
        heading = 353.07,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-995.238, -1182.227, 58.019),
        heading = 72.29,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Sampson Forth",
        coords = vector3(-5448.476, -2925.075, 0.983),
        heading = 160.97,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-5451.571, -2924.985, 0.764),
        heading = 160.97,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Elenora Riddick",
        coords = vector3(-5452.14, -2921.986, 0.928),
        heading = 130.9,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Amelia Eaves",
        coords = vector3(-5455.174, -2919.79, 0.908),
        heading = 130.9,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Truman Briggs",
        coords = vector3(-5457.066, -2917.097, 0.879),
        heading = 115.54,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Henrietta Feaney",
        coords = vector3(-5459.104, -2913.842, 0.842),
        heading = 115.54,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-5461.515, -2911.3, 0.764),
        heading = 97.15,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Hattie Tanner",
        coords = vector3(-5461.024, -2908.438, 0.844),
        heading = 72.29,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-5456.234, -2911.957, 0.729),
        heading = 72.29,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Lucile Riggs",
        coords = vector3(-5452.359, -2915.812, 0.83),
        heading = 126.06,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-5451.397, -2918.641, 0.7368),
        heading = 126.06,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Estella Blankenship",
        coords = vector3(-5447.721, -2920.35, 0.884),
        heading = 160.97,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-5454.319, -2896.028, 0.951),
        heading = 1.82,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-5449.934, -2900.842, 1.0362),
        heading = 316.63,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-5443.186, -2905.219, 0.933),
        heading = 316.63,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Betsy Glover",
        coords = vector3(-5441.532, -2909.146, 0.77),
        heading = 316.63,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Owen MacFarlane",
        coords = vector3(-3344.64, -2864.639, -5.916),
        heading = 113.21,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3343.5007, -2867.812, -5.963),
        heading = 113.21,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "John Doe",
        coords = vector3(-3342.611, -2872.194, -6.086),
        heading = 113.21,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Dwight Bundy",
        coords = vector3(-3331.828, -2874.931, -5.981),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Gideon Knox",
        coords = vector3(-3329.546, -2875.518, -5.938),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3325.239, -2874.811, -5.976),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Hank MacFarlane",
        coords = vector3(-3321.128, -2875.177, -5.966),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Rosie Tenerton",
        coords = vector3(-3317.827, -2874.54, -5.859),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3313.899, -2874.206, -5.869),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3310.875, -2872.435, -5.95),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Calvin Draper",
        coords = vector3(-3321.999, -2869.977, -5.959),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3329.323, -2869.354, -5.874),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3333.374, -2868.624, -5.995),
        heading = 166.88,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3337.0144, -2870.97, -5.958),
        heading = 110.08,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3338.57, -2868.677, -5.883),
        heading = 110.08,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Josephine Byrd",
        coords = vector3(-3338.975, -2865.673, -5.96),
        heading = 110.08,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Jackson Greenwood",
        coords = vector3(-3341.413, -2863.171, -6.101),
        heading = 110.08,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3341.991, -2860.75, -6.101),
        heading = 110.08,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3346.965, -2857.086, -6.087),
        heading = 53.1,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3344.562, -2856.721, -6.09),
        heading = 53.1,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3342.517, -2854.575, -5.921),
        heading = 53.1,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3298.285, -2858.223, -5.982),
        heading = 265.84,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3298.469, -2861.62, -5.963),
        heading = 265.84,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3299.269, -2864.234, -5.958),
        heading = 265.84,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Francis Moon",
        coords = vector3(-3306.55, -2849.712, -5.96),
        heading = 189.01,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Theodore Kilbane",
        coords = vector3(-3304.979, -2842.438, -5.968),
        heading = 189.01,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Judith Johnston",
        coords = vector3(-3309.883, -2843.904, -6.015),
        heading = 189.01,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3312.486, -2848.838, -6.029),
        heading = 189.01,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-3308.96, -2839.341, -6.101),
        heading = 289.86,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "John Doe",
        coords = vector3(2899.156, 500.597, 65.696),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"

    },
    {
        name = "John Doe",
        coords = vector3(2898.798, 492.818, 66.852),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2899.293, 504.195, 64.892),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2901.576, 500.643, 65.331),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2900.212, 500.491, 65.581),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2897.19, 499.543, 65.885),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2898.392, 496.003, 66.401),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2899.841, 495.968, 66.325),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2902.585, 495.955, 65.974),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2903.872, 495.9, 65.737),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2902.179, 492.202, 66.663),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2900.119, 491.991, 66.930),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2896.51, 490.791, 66.942),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2899.268, 488.118, 67.105),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2901.618, 487.443, 67.141),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2902.619, 486.969, 66.955),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2904.395, 486.394, 66.791),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2903.632, 489.714, 66.745),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2905.332, 489.737, 66.8),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2901.517, 483.387, 66.856),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2899.555, 483.895, 66.988),
        heading = 182.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1309.881, 2469.149, 310.063),
        heading = 68.56,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1310.783, 2466.259, 309.992),
        heading = 68.56,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1311.21, 2465.538, 309.945),
        heading = 68.56,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1316.74, 2467.255, 309.904),
        heading = 247.16,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1316.311, 2468.585, 309.968),
        heading = 247.16,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1315.792, 2469.88, 310.023),
        heading = 247.16,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(-1315.47, 2471.351, 310.175),
        heading = 247.16,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(799.84, 1778.32, 281.48),
        heading = 100.31,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2899.31, 484.22, 66.99),
        heading = 171.89,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(1269.88, -1235.37, 79.82),
        heading = 24.36,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Abe Shackleford",
        coords = vector3(-5454.41, -2913.17, 0.96),
        heading = 113.79,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Davey Callander",
        coords = vector3(-1306.024, 2468.279, 310.211),
        heading = 68.56,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Jenny Kirk",
        coords = vector3(-1279.48, 2896.14, 386.65),
        heading = 245.78,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Sean McGuire",
        coords = vector3(674.02, -975.35, 54.37),
        heading = 59.49,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Kieran Duffy",
        coords = vector3(1734.72, -1895.26, 45.77),
        heading = 315.62,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Hosea Matthews",
        coords = vector3(2577.0, -629.4, 43.47),
        heading = 341.05,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Lenny Summers",
        coords = vector3(2578.87, -629.63, 43.64),
        heading = 341.05,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Eagle Flies",
        coords = vector3(512.57, 1932.22, 200.87),
        heading = 271.73,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Susan Grimshaw",
        coords = vector3(2155.79, 794.74, 157.18),
        heading = 270.28,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Arthur Morgan",
        coords = vector3(795.54, 1777.57, 281.44),
        heading = 171.89,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Mary Jane Hubbard",
        coords = vector3(2136.85, 137.01, 74.72),
        heading = 114.56,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Patrick Edward Reilly",
        coords = vector3(2135.83, 140.88, 75.26),
        heading = 114.56,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "George Henry Seymour",
        coords = vector3(2134.302, 144.65, 75.609),
        heading = 114.56,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Charles Phillop Landry",
        coords = vector3(2132.982, 146.314, 75.724),
        heading = 24.36,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Unknown",
        coords = vector3(2134.22, 149.432, 75.787),
        heading = 24.36,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Ada F. Williams",
        coords = vector3(2136.118, 147.16, 75.686),
        heading = 114.56,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Ezra Meier",
        coords = vector3(2123.534, 143.812, 75.514),
        heading = 288.95,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },
    {
        name = "Virginia Madison",
        coords = vector3(2134.631, 143.85, 75.56),
        heading = 288.95,
        Rewards = graveItems.graveOne,
        ToolRequired = "shovel"
    },

}
