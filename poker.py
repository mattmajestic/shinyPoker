from random import random
from texasholdem import Card

card = Card("Kd")                       # King of Diamonds
assert isinstance(card, int)            # True
assert card.rank == 11                  # 2nd highest rank (0-12)
assert card.pretty_string == "[ K ♦ ]"

from texasholdem import TexasHoldEm
from texasholdem.agents import random_agent, call_agent

game = TexasHoldEm(buyin=500, big_blind=5, small_blind=2)
game.start_hand()

while game.is_hand_running():
    if game.current_player % 2 == 0:
        game.take_action(*random_agent(game))
    else:
        game.take_action(*call_agent(game))

from texasholdem import TexasHoldEm
from texasholdem.gui import TextGUI
import random
filename = str(random.sample(range(1, 1000000),1))

game = TexasHoldEm(buyin=500, big_blind=5, small_blind=2)
game.start_hand()

while game.is_hand_running():
    game.take_action(*random_agent(game))

# export to file
game.export_history("./pgns/" + filename + ".pgn")