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

Config.ShovelItem = "shovel" --inventory name of the shovel item for grave dig
Config.DiggingTimer = 20     --seconds
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

Config.UseHours = true                          -- if true it will use hours meaning only can be robbed at night
Config.Hours = { 21, 07 }                       -- 9pm to 7am is allowed to make a robbery
Config.synSociety = false
Config.outsider_jobalert = {
    usealert = true,
    police = "alertlaw", -- job of player and command to alert same as in the script
    undertaker = "alertundertaker",
    -- add more here
}
-- add jobs here that can be alerted when a grave is being robbed
Config.JobsToAlert = { "police", "undertaker" }

Config.Graves = {
    [1] = {
        name = "Elsie Feeney",
        coords = vector3(1282.042, -1242.295, 79.989),
        heading = 26.0788,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        }
    },
    [2] = {
        name = "Harvey Feeney",
        coords = vector3(1280.190, -1243.406, 79.721),
        heading = 26.999,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        }
    },
    [3] = {
        name = "Nettie Mae Feeney",
        coords = vector3(1277.646, -1243.937, 79.641),
        heading = 28.891,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [4] = {
        name = "Stephen Banks",
        coords = vector3(1273.183, -1238.915, 79.715),
        heading = 21.938,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [5] = {
        name = "Marietta Banks",
        coords = vector3(1275.114, -1237.997, 79.923),
        heading = 17.2695,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [6] = {
        name = "Charlie Banks",
        coords = vector3(1277.472, -1237.081, 80.183),
        heading = 22.858,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [7] = {
        name = "Unknown",
        coords = vector3(1277.429, -1231.219, 80.685),
        heading = 9.5856,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [8] = {
        name = "Unknown",
        coords = vector3(1273.790, -1229.006, 80.594),
        heading = 5.973,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [9] = {
        name = "Unknown",
        coords = vector3(1270.969, -1230.913, 80.255),
        heading = 11.065,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [10] = {
        name = "Unknown",
        coords = vector3(1267.327, -1232.056, 79.946),
        heading = 16.203,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [11] = {
        name = "Douglas Gray",
        coords = vector3(1268.745, -1228.923, 80.280),
        heading = 15.811,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [12] = {
        name = "Lucille Braithwaite",
        coords = vector3(1275.525, -1220.127, 81.420),
        heading = 18.769,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [13] = {
        name = "Unknown",
        coords = vector3(1271.028, -1224.483, 80.772),
        heading = 15.9214,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [14] = {
        name = "Unknown",
        coords = vector3(1272.812, -1224.395, 80.905),
        heading = 16.95,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [15] = {
        name = "Unknown",
        coords = vector3(1274.721, -1223.716, 81.162),
        heading = 22.049,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [16] = {
        name = "Unknown",
        coords = vector3(1279.936, -1214.892, 81.869),
        heading = 14.358,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [17] = {
        name = "Unknown",
        coords = vector3(1275.776, -1207.828, 82.502),
        heading = 192.68,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [18] = {
        name = "Unknown",
        coords = vector3(1292.837, -1214.911, 81.841),
        heading = 358.166,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [19] = {
        name = "Unknown",
        coords = vector3(1295.810, -1215.574, 81.551),
        heading = 14.873,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [20] = {
        name = "Unknown",
        coords = vector3(1298.355, -1214.914, 81.341),
        heading = 4.81563,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [21] = {
        name = "Unknown",
        coords = vector3(1297.090, -1212.736, 81.562),
        heading = 15.6860,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [22] = {
        name = "Unknown",
        coords = vector3(1295.598, -1213.070, 81.674),
        heading = 103.038,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [23] = {
        name = "Unknown",
        coords = vector3(1294.745, -1213.792, 81.716),
        heading = 17.239,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [24] = {
        name = "Unknown",
        coords = vector3(1292.806, -1211.421, 82.019),
        heading = 19.154,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [25] = {
        name = "Unknown",
        coords = vector3(1293.655, -1210.771, 81.990),
        heading = 11.1098,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [26] = {
        name = "Unknown",
        coords = vector3(1295.177, -1210.914, 81.834),
        heading = 28.956,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [27] = {
        name = "William 'Willie' Bowley",
        coords = vector3(1302.913, -1214.625, 80.995),
        heading = 14.057,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [28] = {
        name = "Unknown",
        coords = vector3(1292.054, -1209.464, 82.274),
        heading = 24.189,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [29] = {
        name = "Unknown",
        coords = vector3(1290.816, -1210.013, 82.305),
        heading = 17.146,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [30] = {
        name = "Unknown",
        coords = vector3(1296.455, -1210.326, 81.760),
        heading = 26.106,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    --Tumbleweed
    [31] = {
        name = "Obediah Graves",
        coords = vector3(-5456.595, -2902.982, 1.028),
        heading = 81.814,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [32] = {
        name = "Philip Greenup",
        coords = vector3(-5456.591, -2906.397, 0.844),
        heading = 84.498,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [33] = {
        name = "James Somers",
        coords = vector3(1296.455, -1210.326, 81.760),
        heading = 26.106,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [34] = {
        name = "Hattie Tanner",
        coords = vector3(-5460.937, -2908.025, 0.753),
        heading = 95.592,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [35] = {
        name = "Henrietta Feaney",
        coords = vector3(-5458.825, -2913.884, 0.818),
        heading = 114.683,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [36] = {
        name = "Truman Briggs",
        coords = vector3(-5457.110, -2916.517, 0.834),
        heading = 125.010,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [37] = {
        name = "Amelia  Eaves",
        coords = vector3(-5455.089, -2919.180, 0.911),
        heading = 130.245,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [38] = {
        name = "Larry Chambers",
        coords = vector3(-5453.695, -2909.376, 0.724),
        heading = 106.333,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [39] = {
        name = "Age Shackleford",
        coords = vector3(-5453.124, -2912.125, 0.736),
        heading = 123.470,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [40] = {
        name = "Lucile Riggs",
        coords = vector3(-5451.013, -2914.697, 0.736),
        heading = 126.844,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [41] = {
        name = "Sampson Forth",
        coords = vector3(-5448.036, -2923.312, 0.750),
        heading = 156.056,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [42] = {
        name = "Betsy Glover",
        coords = vector3(-5442.245, -2909.671, 0.832),
        heading = 314.052,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [43] = {
        name = "Henry Grenshaw",
        coords = vector3(-5447.143, -2904.520, 0.928),
        heading = 320.253,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [44] = {
        name = "Ronald Clayton",
        coords = vector3(-5450.050, -2902.246, 0.928),
        heading = 335.324,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    --black water
    [45] = {
        name = "Ronald Clayton",
        coords = vector3(-954.37, -1205.78, 55.63),
        heading = 357.31,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [46] = {
        name = "James Smith",
        coords = vector3(-963.48, -1194.05, 57.82),
        heading = 350.79,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [47] = {
        name = "Missy Sullivan",
        coords = vector3(-966.15, -1210.2, 55.88),
        heading = 356.4,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [48] = {
        name = "Don Jones",
        coords = vector3(-993.15, -1195.51, 58.65),
        heading = 5.55,
        Rewards = {

            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [49] = {
        name = "John Arthur",
        coords = vector3(-1008.82, -1189.1, 58.73),
        heading = 8.71,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
    [50] = {
        name = "Levi Wallace",
        coords = vector3(-1015.15, -1200.82, 60.0),
        heading = 344.88,
        Rewards = {
            { item = "goldring",   label = "Golden Ring" },
            { item = "goldnugget", label = "Golden Nugget" },
            { item = "emerald",    label = "Emerald" },
            { item = "goldbar",    label = "GoldBar" },
        },
    },
}
