--- STEAMODDED HEADER
--- MOD_NAME: The Wave Nebula
--- MOD_ID: WaveNebula
--- MOD_AUTHOR: [InfinityPlus05]
--- MOD_DESCRIPTION: Adds my system as card art :3

----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas{
  key = 'wave_nebula_cards',
  path = 'cards.png',
  px = 71,
  py = 95,
  prefix_config = { key = false }
}

SMODS.Atlas{
  key = 'paperback_wave_nebula_cards',
  path = 'cards-paperback.png',
  px = 71,
  py = 95,
  prefix_config = { key = false }
}

SMODS.Atlas{
  key = 'wave_nebula_ui',
  path = 'ui.png',
  px = 18,
  py = 18,
  prefix_config = { key = false }
}

SMODS.Atlas{
  key = 'paperback_wave_nebula_ui',
  path = 'ui_paperback.png',
  px = 18,
  py = 18,
  prefix_config = { key = false }
}


local wave_colours = {
  Hearts = HEX('80ccf9'),
  Diamonds = HEX('fec052'),
  Spades = HEX('423894'),
  Clubs = HEX('ce69d6'),
}

local wave_colours_paperback = {
  paperback_Stars = HEX('f5a5c6'),
  paperback_Crowns = HEX('aa2120'),
}

local ranks = {
  '2', '3', '4', '5', '6', '7', '8',
  '9', '10', 'Jack', 'Queen', 'King', 'Ace',
}

for suit, colour in pairs(wave_colours) do
  SMODS.DeckSkin{
    key = 'wave_nebula_' .. suit,
    suit = suit,
    loc_txt = { ['en-us'] = 'Wave Nebula' },
    palettes = {
      {
        key = 'wave_nebula',
        loc_txt = { ['en-us'] = 'Wave Nebula' },
        ranks = ranks,
        display_ranks = { 'Ace', 'King', 'Queen', 'Jack', '10' },
        atlas = 'wave_nebula_cards',
        pos_style = 'deck',
        colour = colour,
        suit_icon = {
          atlas = 'wave_nebula_ui',
          pos = { x = 0, y = (suit == 'Hearts' and 0) 
          or (suit == 'Diamonds' and 1) 
          or (suit == 'Spades' and 2) 
          or (suit == 'Clubs' and 3) or 0 },
        },
      },
    },
  }
end

if PB_UTIL then
  for suit, colour in pairs(wave_colours_paperback) do
    SMODS.DeckSkin{
      key = 'paperback_wave_nebula_' .. suit,
      suit = suit,
      loc_txt = { ['en-us'] = 'Wave Nebula' },
      palettes = {
        {
          key = 'paperback_wave_nebula',
          loc_txt = { ['en-us'] = 'Wave Nebula' },
          ranks = ranks,
          display_ranks = { 'Ace', 'King', 'Queen', 'Jack', '10' },
          atlas = 'paperback_wave_nebula_cards',
          pos_style = 'deck',
          colour = colour,
          suit_icon = {
            atlas = 'paperback_wave_nebula_ui',
            pos = { x = 0, y = suit == 'paperback_Crowns' and 0 or 1 },
          },
        },
      },
    }
  end
end

----------------------------------------------
------------MOD CODE END----------------------
