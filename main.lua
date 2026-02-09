---@class BetterBags: AceAddon
local addon = LibStub('AceAddon-3.0'):GetAddon('BetterBags')
---@class Categories: AceModule
local categories = addon:GetModule('Categories')

local MetaGems = {
	219878, -- Tireless Spirit
	221977, -- Funeral Pyre
	216663, -- Oblivion Sphere
	220211, -- Precipice of Madness
	216711, -- Chi-ji, the Red Crane
	220117, -- Ward of Salvation
	216671, -- Thundering Orb
	219386, -- Locus of Power
	216695, -- Lifestorm
	221982, -- Bulwark of the Black Ox
	220120, -- Soul Tether
}

local CogWheels = {
	216632, -- Sprint
	218044, -- Pursuit of Justice
	218045, -- Door of Shadows
	216629, -- Blink
	218043, -- Wild Charge
	218108, -- Dark Pact
	216631, -- Roll
	217989, -- Trailblazer
	218082, -- Spiritwalker's Grace
	218109, -- Death's Advance
	218110, -- Soulshape
	217983, -- Disengage
	218003, -- Leap of Faith
	218004, -- Vanish
	216630, -- Heroic Leap
	218005, -- Stampeding Roar
	218046, -- Spirit Walk
}

local Tinker = {
	219801, -- Ankh of Reincarnation
	212366, -- Arcanist's Edge
	219944, -- Bloodthirsty Coral
	219818, -- Brilliance
	216649, -- Brittle
	216648, -- Cold Front
	217957, -- Deliverance
	212694, -- Enkindle
	212749, -- Explosive Barrage
	212365, -- Fervor
	219817, -- Freedom
	212916, -- Frost Armor
	219777, -- Grounding
	216647, -- Hailstorm
	217964, -- Holy Martyr
	212758, -- Incendiary Terror
	219389, -- Lightning Rod
	216624, -- Mark of Arrogance
	216650, -- Memory of Vengeance
	212759, -- Meteor Storm
	212361, -- Opportunist
	216625, -- Quick Strike
	217961, -- Righteous Frenzy
	217927, -- Savior
	216651, -- Searing Light
	216626, -- Slay
	219452, -- Static Charge
	219523, -- Storm Overload
	212362, -- Sunstrider's Flourish
	212629, -- Test Ruby
	216627, -- Tinkmaster's Shield
	219527, -- Vampiric Aura
	216628, -- Victory Fire
	217903, -- Vindication
	217907, -- Warmth
	212760, -- Wildfire
	219516, -- Windweaver
}

local Prismatic = {
	210714, -- Chipped Deadly Sapphire
	210717, -- Chipped Hungering Ruby
	210715, -- Chipped Masterful Amethyst
	210681, -- Chipped Quick Topaz
	220367, -- Chipped Stalwart Pearl
	211109, -- Chipped Sustaining Emerald
	210716, -- Chipped Swift Opal
	220371, -- Chipped Versatile Diamond
	211123, -- Deadly Sapphire
	216644, -- Flawed Deadly Sapphire
	216641, -- Flawed Hungering Ruby
	216640, -- Flawed Masterful Amethyst
	216643, -- Flawed Quick Topaz
	220368, -- Flawed Stalwart Pearl
	216642, -- Flawed Sustaining Emerald
	216639, -- Flawed Swift Opal
	220372, -- Flawed Versatile Diamond
	210718, -- Hungering Ruby
	211106, -- Masterful Amethyst
	211102, -- Perfect Deadly Sapphire
	211103, -- Perfect Hungering Ruby
	211108, -- Perfect Masterful Amethyst
	211110, -- Perfect Quick Topaz
	220369, -- Perfect Stalwart Pearl
	211105, -- Perfect Sustaining Emerald
	211101, -- Perfect Swift Opal
	220373, -- Perfect Versatile Diamond
	211107, -- Quick Topaz
	220370, -- Stalwart Pearl
	211125, -- Sustaining Emerald
	211124, -- Swift Opal
	220374, -- Versatile Diamond
}

local BuffItems = {
	217731, -- Timeless Scroll of Mystic Power
	217605, -- Timeless Scroll of Intellect
	217607, -- Timeless Scroll of the Wild
	217606, -- Timeless Scroll of Fortitude
	217608, -- Timeless Scroll of Battle Shout
	217730, -- Timeless Scroll of Chaos
	217901, -- Timeless Drums
}

local UtilityItems = {
	217928, -- Timeless Scroll of Resurrection
	217929, -- Timeless Scroll of Cleansing
	217956, -- Timeless Scroll of Summoning
	219940, -- Meteor Chip
	217930, -- Nostwin's Voucher
	217906, -- Drake Treat
	217925, -- Bottle of Bees
}

local ConsumableItems = {
	217904, -- Timerunner's Draught of Power
	217905, -- Timerunner's Draught of Health
	211254, -- Timerunner's Bandage
}

local Threads = {
	226142, -- Greater Spool of Eternal Thread
	226143, -- Spool of Eternal Thread
	226144, -- Lesser Spool of Eternal Thread
	226145, -- Minor Spool of Eternal Thread
	219264, -- Temporal thread of experiance
	219257, -- Temporal thread of stamina
	219256, -- Temporal thread of power
	219263, -- Temporal thread of versatility
	219261, -- Temporal thread of leech
	219258, -- Temporal thread of critical strike
	219260, -- Temporal thread of speed
	219259, -- Temporal thread of haste
	219262, -- Temporal thread of mastery
	219273, -- perpetual thread of experiance
	219226, -- perpetual thread of stamina
	219271, -- perpetual thread of mastery
	219265, -- perpetual thread of power
	219272, -- perpetual thread of versatility
	219270, -- perpetual thread of leech
	219267, -- perpetual thread of critical strike
	219269, -- perpetual thread of speed
	219268, -- perpetual thread of haste
	219282, -- infinite thread of experiance
	219275, -- infinite thread of stamina
	219274, -- infinite thread of power
	219281, -- infinite thread of versatility
	219279, -- infinite thread of leech
	219276, -- infinite thread of critical strike
	219278, -- infinite thread of speed
	219277, -- infinite thread of haste
	219280, -- infinite thread of mastery
}

local colorPrefix = '|cff00FF98'

for _, ItemID in pairs(MetaGems) do
	categories:AddItemToCategory(ItemID, colorPrefix .. 'Meta Gems')
end

for _, ItemID in pairs(CogWheels) do
	categories:AddItemToCategory(ItemID, colorPrefix .. 'Cogwheel Gems')
end

for _, ItemID in pairs(Tinker) do
	categories:AddItemToCategory(ItemID, colorPrefix .. 'Tinker Gems')
end

for _, ItemID in pairs(Prismatic) do
	categories:AddItemToCategory(ItemID, colorPrefix .. 'Prismatic Gems')
end

for _, ItemID in pairs(BuffItems) do
	categories:AddItemToCategory(ItemID, colorPrefix .. 'Buff Items')
end

for _, ItemID in pairs(UtilityItems) do
	categories:AddItemToCategory(ItemID, colorPrefix .. 'Utility Items')
end

for _, ItemID in pairs(ConsumableItems) do
	categories:AddItemToCategory(ItemID, colorPrefix .. 'Consumables')
end

for _, ItemID in pairs(Threads) do
	categories:AddItemToCategory(ItemID, colorPrefix .. 'Threads')
end
