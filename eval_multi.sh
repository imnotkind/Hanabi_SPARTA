sample=1000


# SmartBot (prefers to play cards its partners don't know it knows)
python3 eval_bot.py SmartBot --games $sample &> SMART2.output

# evaluate SAD 2 player
GREEDY_ACTION=1 TORCHBOT_MODEL=models/sad_player2.pth python3 eval_bot.py TorchBot --games $sample &> SAD2.output

#HolmesBot (also performs inferences, and uses mulligans)
python3 eval_bot.py HolmesBot --games $sample &> HOLMES2.output

#SimpleBot (hints about playable cards)
python3 eval_bot.py SimpleBot --games $sample &> SIMPLE2.output


# evaluate Smartbot 4 player
#python3 eval_bot.py SmartBot --players 4 --games $sample &> SMART4.output


# evaluate SAD 4 player
#GREEDY_ACTION=1 TORCHBOT_MODEL=models/sad_player4.pth python3 eval_bot.py SearchBot --players 4 --games $sample &> SAD4.output

