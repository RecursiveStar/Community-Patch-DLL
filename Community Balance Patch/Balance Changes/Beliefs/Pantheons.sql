-- PANTHEONS

-- Goddess of the Hunt
DELETE FROM Belief_ImprovementYieldChanges
WHERE BeliefType = 'BELIEF_GODDESS_HUNT';

-- Fertility Rites
UPDATE Beliefs
SET CityGrowthModifier = '15'
WHERE Type = 'BELIEF_FERTILITY_RITES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- God of Craftsmen
DELETE FROM Beliefs
WHERE Type = 'BELIEF_GOD_CRAFTSMEN';

DELETE FROM Belief_CityYieldChanges
WHERE BeliefType = 'BELIEF_GOD_CRAFTSMEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- God of the Sea
UPDATE Belief_ImprovementYieldChanges
SET YieldType = 'YIELD_FAITH'
WHERE BeliefType = 'BELIEF_GOD_SEA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Belief_ImprovementYieldChanges
SET Yield = '1'
WHERE BeliefType = 'BELIEF_GOD_SEA' AND YieldType = 'YIELD_FAITH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- God of the Open Sky

UPDATE Belief_ImprovementYieldChanges
SET YieldType = 'YIELD_FAITH'
WHERE BeliefType = 'BELIEF_OPEN_SKY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Belief_ImprovementYieldChanges
SET Yield = '1'
WHERE BeliefType = 'BELIEF_OPEN_SKY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresNoImprovementFeature = '1'
WHERE Type = 'BELIEF_OPEN_SKY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Messenger of the Gods
UPDATE Belief_YieldChangeTradeRoute
SET YieldType = 'YIELD_GOLD'
WHERE BeliefType = 'BELIEF_MESSENGER_GODS' AND YieldType = 'YIELD_SCIENCE';

-- One With Nature
UPDATE Belief_YieldChangeNaturalWonder
SET Yield = '3'
WHERE YieldType = 'YIELD_FAITH' AND BeliefType = 'BELIEF_ONE_WITH_NATURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Liturgy (Now Goddess of Wisdom)

UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_FORMAL_LITURGY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Stone Circles
UPDATE Belief_ImprovementYieldChanges
SET Yield = '1'
WHERE BeliefType = 'BELIEF_STONE_CIRCLES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Belief_ImprovementYieldChanges
SET YieldType = 'YIELD_PRODUCTION'
WHERE BeliefType = 'BELIEF_STONE_CIRCLES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- God of War
UPDATE Beliefs
SET MaxDistance = '0'
WHERE Type = 'BELIEF_GOD_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET FaithFromKills = '300'
WHERE Type = 'BELIEF_GOD_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET CityRangeStrikeModifier = '50'
WHERE Type = 'BELIEF_GOD_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Sacred Waters

-- Goddess of Love
UPDATE Beliefs
SET MinPopulation = '0'
WHERE Type = 'BELIEF_GODDESS_LOVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET HappinessPerCity = '0'
WHERE Type = 'BELIEF_GODDESS_LOVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Religious Settlements

UPDATE Beliefs
SET PlotCultureCostModifier = '-20'
WHERE Type = 'BELIEF_RELIGIOUS_SETTLEMENTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- God of Festivals
UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_GOD_FESTIVALS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Oral Tradition

UPDATE Belief_ImprovementYieldChanges
SET YieldType = 'YIELD_FAITH'
WHERE BeliefType = 'BELIEF_ORAL_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Belief_ImprovementYieldChanges
SET Yield = '1'
WHERE BeliefType = 'BELIEF_ORAL_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Ancestor Worship
UPDATE Belief_BuildingClassYieldChanges
SET YieldChange = '0'
WHERE BeliefType = 'BELIEF_ANCESTOR_WORSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

--Desert Folklore
UPDATE Belief_TerrainYieldChanges
SET Yield = '2'
WHERE YieldType = 'YIELD_FAITH' AND BeliefType = 'BELIEF_DESERT_FOLKLORE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresResource = '1'
WHERE Type = 'BELIEF_DESERT_FOLKLORE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresImprovement = '1'
WHERE Type = 'BELIEF_DESERT_FOLKLORE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Sacred Path

UPDATE Belief_FeatureYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_SACRED_PATH' AND FeatureType = 'FEATURE_JUNGLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Goddess of Protection
UPDATE Beliefs
SET FriendlyHealChange = '10'
WHERE Type = 'BELIEF_GODDESS_STRATEGY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Faith Healers
DELETE FROM Beliefs
WHERE Type = 'BELIEF_FAITH_HEALERS';

-- Monuments to the Gods
UPDATE Beliefs
SET WonderProductionModifier = '15'
WHERE Type = 'BELIEF_MONUMENT_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET ObsoleteEra = 'ERA_RENAISSANCE'
WHERE Type = 'BELIEF_MONUMENT_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Dance of the Aurora
UPDATE Belief_TerrainYieldChanges
SET Yield = '1'
WHERE YieldType = 'YIELD_FAITH' AND BeliefType = 'BELIEF_DANCE_AURORA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresImprovement = '1'
WHERE Type = 'BELIEF_DANCE_AURORA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresResource = '1'
WHERE Type = 'BELIEF_DANCE_AURORA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

--  Tears of the Gods (Now Polytheism)
UPDATE Beliefs
SET HappinessPerPantheon = '1'
WHERE Type = 'BELIEF_TEARS_OF_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_TEARS_OF_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Earth Mother
UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_EARTH_MOTHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresResource = '1'
WHERE Type = 'BELIEF_EARTH_MOTHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- God-King
DELETE FROM Belief_BuildingClassYieldChanges
WHERE BeliefType = 'BELIEF_GOD_KING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Sun God

UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_SUN_GOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresResource = '1'
WHERE Type = 'BELIEF_SUN_GOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresImprovement = '1'
WHERE Type = 'BELIEF_SUN_GOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );


-- NEW DATA

INSERT INTO Belief_ImprovementYieldChanges
	(BeliefType, ImprovementType, YieldType, Yield)
VALUES
	('BELIEF_GODDESS_HUNT', 'IMPROVEMENT_CAMP', 'YIELD_FAITH', 1),
	('BELIEF_GODDESS_HUNT', 'IMPROVEMENT_CAMP', 'YIELD_FOOD', 1),
	('BELIEF_GODDESS_HUNT', 'IMPROVEMENT_CAMP', 'YIELD_CULTURE', 1),
	('BELIEF_EARTH_MOTHER', 'IMPROVEMENT_MINE', 'YIELD_FAITH', 1),
	('BELIEF_EARTH_MOTHER', 'IMPROVEMENT_MINE', 'YIELD_GOLD', 1),
	('BELIEF_OPEN_SKY', 'IMPROVEMENT_PASTURE', 'YIELD_GOLD', 1),
	('BELIEF_SUN_GOD', 'IMPROVEMENT_FARM', 'YIELD_FAITH', 1),
	('BELIEF_SUN_GOD', 'IMPROVEMENT_FARM', 'YIELD_CULTURE', 2),
	('BELIEF_ORAL_TRADITION', 'IMPROVEMENT_PLANTATION', 'YIELD_CULTURE', 1),
	('BELIEF_GOD_SEA', 'IMPROVEMENT_FISHING_BOATS', 'YIELD_PRODUCTION', 1),
	('BELIEF_STONE_CIRCLES', 'IMPROVEMENT_QUARRY', 'YIELD_GOLD', 1);

INSERT INTO Belief_CoastalCityYieldChanges
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_GOD_SEA', 'YIELD_FOOD', 3);

INSERT INTO Belief_YieldChangeAnySpecialist
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_STONE_CIRCLES', 'YIELD_FAITH', 3);

INSERT INTO Belief_BuildingClassYieldChanges
	(BeliefType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BELIEF_TEARS_OF_GODS', 'BUILDINGCLASS_PALACE', 'YIELD_FAITH', 2),
	('BELIEF_FERTILITY_RITES', 'BUILDINGCLASS_WELL', 'YIELD_FAITH', 1),
	('BELIEF_FERTILITY_RITES', 'BUILDINGCLASS_WELL', 'YIELD_FOOD', 1),
	('BELIEF_FERTILITY_RITES', 'BUILDINGCLASS_SHRINE', 'YIELD_FOOD', 1),
	('BELIEF_FERTILITY_RITES', 'BUILDINGCLASS_SHRINE', 'YIELD_FAITH', 1),
	('BELIEF_EARTH_MOTHER', 'BUILDINGCLASS_MONUMENT', 'YIELD_PRODUCTION', 2),
	('BELIEF_GODDESS_STRATEGY', 'BUILDINGCLASS_PALACE', 'YIELD_FAITH', 1),
	('BELIEF_GODDESS_STRATEGY', 'BUILDINGCLASS_PALACE', 'YIELD_CULTURE', 1),
	('BELIEF_GODDESS_STRATEGY', 'BUILDINGCLASS_BARRACKS', 'YIELD_FAITH', 1),
	('BELIEF_GODDESS_STRATEGY', 'BUILDINGCLASS_BARRACKS', 'YIELD_CULTURE', 1),
	('BELIEF_GODDESS_STRATEGY', 'BUILDINGCLASS_WALLS', 'YIELD_FAITH', 1),
	('BELIEF_GODDESS_STRATEGY', 'BUILDINGCLASS_WALLS', 'YIELD_CULTURE', 1),
	('BELIEF_STONE_CIRCLES', 'BUILDINGCLASS_STONE_WORKS', 'YIELD_PRODUCTION', 1),
	('BELIEF_STONE_CIRCLES', 'BUILDINGCLASS_STONE_WORKS', 'YIELD_GOLD', 1),
	('BELIEF_ORAL_TRADITION', 'BUILDINGCLASS_MARKET', 'YIELD_GOLD', 2),
	('BELIEF_SUN_GOD', 'BUILDINGCLASS_GRANARY', 'YIELD_FOOD', 2),
	('BELIEF_SUN_GOD', 'BUILDINGCLASS_GRANARY', 'YIELD_GOLD', 1),
	('BELIEF_SACRED_PATH', 'BUILDINGCLASS_HERBALIST', 'YIELD_SCIENCE', 1),
	('BELIEF_SACRED_PATH', 'BUILDINGCLASS_HERBALIST', 'YIELD_FAITH', 1),
	('BELIEF_ANCESTOR_WORSHIP', 'BUILDINGCLASS_GROVE', 'YIELD_CULTURE', 2);

INSERT INTO Belief_YieldFromKnownPantheons
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_TEARS_OF_GODS', 'YIELD_CULTURE', 1);

INSERT INTO Belief_YieldPerPop
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_ANCESTOR_WORSHIP', 'YIELD_FAITH', 3);

INSERT INTO Belief_YieldPerGPT
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_MESSENGER_GODS', 'YIELD_FAITH', 30);

INSERT INTO Belief_YieldPerLux
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_GOD_FESTIVALS', 'YIELD_FAITH', 1),
	('BELIEF_GOD_FESTIVALS', 'YIELD_CULTURE', 2),
	('BELIEF_GOD_FESTIVALS', 'YIELD_GOLD', 2);

INSERT INTO Belief_YieldPerBirth
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_GODDESS_LOVE', 'YIELD_FAITH', 10),
	('BELIEF_GODDESS_LOVE', 'YIELD_GOLDEN_AGE_POINTS', 10);

INSERT INTO Belief_YieldChangeTradeRoute
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_MESSENGER_GODS', 'YIELD_FAITH', 3);

INSERT INTO Belief_YieldChangeWorldWonder
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_MONUMENT_GODS', 'YIELD_FAITH', 2),
	('BELIEF_MONUMENT_GODS', 'YIELD_CULTURE', 1);

INSERT INTO Belief_YieldChangeNaturalWonder
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_ONE_WITH_NATURE', 'YIELD_CULTURE', 2);

INSERT INTO Belief_YieldPerBorderGrowth
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIGIOUS_SETTLEMENTS', 'YIELD_FAITH', 20);

INSERT INTO Belief_FeatureYieldChanges
	(BeliefType, FeatureType, YieldType, Yield)
VALUES
	('BELIEF_SACRED_WATERS', 'FEATURE_OASIS', 'YIELD_FAITH', 1),
	('BELIEF_SACRED_WATERS', 'FEATURE_MARSH', 'YIELD_FAITH', 1),
	('BELIEF_SACRED_WATERS', 'FEATURE_OASIS', 'YIELD_FOOD', 1),
	('BELIEF_SACRED_WATERS', 'FEATURE_MARSH', 'YIELD_FOOD', 1),
	('BELIEF_GOD_SEA', 'FEATURE_ATOLL', 'YIELD_FAITH', 1),
	('BELIEF_GOD_SEA', 'FEATURE_ATOLL', 'YIELD_PRODUCTION', 1);

INSERT INTO Belief_LakePlotYield
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_SACRED_WATERS', 'YIELD_FAITH', 1),
	('BELIEF_SACRED_WATERS', 'YIELD_FOOD', 1);

INSERT INTO Belief_YieldPerScience
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_FORMAL_LITURGY', 'YIELD_FAITH', 15);

INSERT INTO Belief_CityYieldChanges
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_FORMAL_LITURGY', 'YIELD_FAITH', 2),
	('BELIEF_FORMAL_LITURGY', 'YIELD_SCIENCE', 1);

INSERT INTO Belief_TerrainYieldChanges
	(BeliefType, TerrainType, YieldType, Yield)
VALUES
	('BELIEF_DESERT_FOLKLORE', 'TERRAIN_DESERT', 'YIELD_FOOD', 2),
	('BELIEF_DESERT_FOLKLORE', 'TERRAIN_DESERT', 'YIELD_GOLD', 2),
	('BELIEF_DANCE_AURORA', 'TERRAIN_TUNDRA', 'YIELD_PRODUCTION', 2),
	('BELIEF_DANCE_AURORA', 'TERRAIN_TUNDRA', 'YIELD_CULTURE', 2);

INSERT INTO Belief_YieldPerXFollowers
	(BeliefType, YieldType, PerXFollowers)
VALUES
	('BELIEF_GOD_KING', 'YIELD_FAITH', 6),
	('BELIEF_GOD_KING', 'YIELD_GOLD', 6),
	('BELIEF_GOD_KING', 'YIELD_CULTURE', 6),
	('BELIEF_GOD_KING', 'YIELD_SCIENCE', 6);

INSERT INTO Belief_CityYieldPerXTerrainTimes100
	(BeliefType, TerrainType, YieldType, Yield)
VALUES
	('BELIEF_OPEN_SKY', 'TERRAIN_PLAINS', 'YIELD_CULTURE', 50),
	('BELIEF_OPEN_SKY', 'TERRAIN_GRASS', 'YIELD_CULTURE', 50),
	('BELIEF_ONE_WITH_NATURE', 'TERRAIN_MOUNTAIN', 'YIELD_FAITH', 50),
	('BELIEF_ONE_WITH_NATURE', 'TERRAIN_MOUNTAIN', 'YIELD_CULTURE', 50);

INSERT INTO Belief_CityYieldPerXFeatureTimes100
	(BeliefType, FeatureType, YieldType, Yield)
VALUES
	('BELIEF_SACRED_PATH', 'FEATURE_FOREST', 'YIELD_CULTURE', 50),
	('BELIEF_SACRED_PATH', 'FEATURE_JUNGLE', 'YIELD_CULTURE', 50),
	('BELIEF_SACRED_PATH', 'FEATURE_JUNGLE', 'YIELD_FAITH', 50),
	('BELIEF_SACRED_PATH', 'FEATURE_FOREST', 'YIELD_FAITH', 50);


UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_SUN_GOD'
WHERE Type = 'BELIEF_SUN_GOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_GOD_KING'
WHERE Type = 'BELIEF_GOD_KING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_EARTH_MOTHER'
WHERE Type = 'BELIEF_EARTH_MOTHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_TEARS_OF_GODS'
WHERE Type = 'BELIEF_TEARS_OF_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_DANCE_AURORA'
WHERE Type = 'BELIEF_DANCE_AURORA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_MONUMENT_GODS'
WHERE Type = 'BELIEF_MONUMENT_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_GODDESS_STRATEGY'
WHERE Type = 'BELIEF_GODDESS_STRATEGY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_SACRED_PATH'
WHERE Type = 'BELIEF_SACRED_PATH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_DESERT_FOLKLORE'
WHERE Type = 'BELIEF_DESERT_FOLKLORE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_ANCESTOR_WORSHIP'
WHERE Type = 'BELIEF_ANCESTOR_WORSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_ORAL_TRADITION'
WHERE Type = 'BELIEF_ORAL_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_GOD_FESTIVALS'
WHERE Type = 'BELIEF_GOD_FESTIVALS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIGIOUS_SETTLEMENTS'
WHERE Type = 'BELIEF_RELIGIOUS_SETTLEMENTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_GODDESS_LOVE'
WHERE Type = 'BELIEF_GODDESS_LOVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_SACRED_WATERS'
WHERE Type = 'BELIEF_SACRED_WATERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_GOD_WAR'
WHERE Type = 'BELIEF_GOD_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_STONE_CIRCLES'
WHERE Type = 'BELIEF_STONE_CIRCLES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_FORMAL_LITURGY'
WHERE Type = 'BELIEF_FORMAL_LITURGY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_ONE_WITH_NATURE'
WHERE Type = 'BELIEF_ONE_WITH_NATURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_MESSENGER_GODS'
WHERE Type = 'BELIEF_MESSENGER_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_OPEN_SKY'
WHERE Type = 'BELIEF_OPEN_SKY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_GOD_SEA'
WHERE Type = 'BELIEF_GOD_SEA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_FERTILITY_RITES'
WHERE Type = 'BELIEF_FERTILITY_RITES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_GODDESS_HUNT'
WHERE Type = 'BELIEF_GODDESS_HUNT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

