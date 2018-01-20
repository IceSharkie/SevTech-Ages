import crafttweaker.item.IItemStack;

var outputToRemove as IItemStack[] = [
	<actuallyadditions:item_food:15>,
	<actuallyadditions:item_misc:5>,

	//Ceramics
	<ceramics:clay_barrel:1>,
	<ceramics:clay_barrel>,
	<ceramics:clay_bucket>,

	<embers:plate_caminite>,
	<improvedbackpacks:tanned_leather>,
	<minecraft:bread>,
	<minecraft:brick>,
	<minecraft:coal:1>, //Charcoal Revamp
	<minecraft:glass>, //Glass Revamp
	<minecraft:leather>,
	<minecraft:netherbrick>,
	<primal:carbonate_stone>,
	<industrialforegoing:plastic>
];

for item in outputToRemove {
	furnace.remove(item);
}

var recipesToAdd as IItemStack[][] = [
	[<actuallyadditions:item_misc:5> ,<actuallyadditions:item_dust:7>],
	[<minecraft:bread>, <horsepower:dough>],
	[<primal:shark_meat_cooked>, <primal:shark_meat_raw>],
	[<progressiontweaks:flat_bread>, <horsepower:flour>],
	[<quark:glass_shards>, <betterwithmods:red_sand_pile>],
	[<quark:glass_shards>, <betterwithmods:sand_pile>]
];

for items in recipesToAdd {
	furnace.addRecipe(items[0], items[1]);
}
