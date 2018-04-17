items = [
  { name: 'Copper Ore', kind: 'ore', rarity: 'common', icon: 'inv_ore_copper_01', value: 10 },
  { name: 'Iron Ore', kind: 'ore', rarity: 'common', icon: 'inv_ore_iron_01', value: 20 },
  { name: 'Gold Ore', kind: 'ore', rarity: 'uncommon', icon: 'inv_ore_gold_01', value: 30 },
  { name: 'Raw Meat', kind: 'meat', rarity: 'common', icon: 'inv_misc_food_meat_rawtigersteak', value: 10 },
  { name: 'Iron Sword', kind: 'weapon', rarity: 'rare', icon: 'inv_sword_04', value: 50, stackable: false }
]

items.each { |item| Item.where(item).first_or_create! }
