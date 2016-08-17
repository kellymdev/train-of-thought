# Thoughts
stressed = Thought.create!(name: 'Stressed')
anxious = Thought.create!(name: 'Anxious')
mindfulness = Thought.create!(name: 'Mindfulness')

# Steps
walk = Step.create!(name: 'Walk', description: 'Go for a walk')
feelings = Step.create!(name: 'Feelings', description: 'Notice your feelings')
sounds = Step.create!(name: 'Sounds', description: 'Notice the sounds around you')
colours = Step.create!(name: 'Colours', description: 'Notice the colours around you')
breathing = Step.create!(name: 'Breathing', description: 'Notice your breathing')
breathe = Step.create!(name: 'Breathe', description: 'Take a deep breath')
count = Step.create!(name: 'Count', description: 'Count to 10')
shapes = Step.create!(name: 'Shapes', description: 'Notice the shapes around you')
temp = Step.create!(name: 'Temperature', description: 'Notice the temperatures around you')

# Sequences
stressed.sequences.create!([{ step: walk },
  { step: feelings },
  { step: breathe },
  { step: count },
  { step: sounds }])

anxious.sequences.create!([{ step: feelings },
  { step: walk },
  { step: breathe },
  { step: count },
  { step: breathing }])

mindfulness.sequences.create!([{ step: breathing },
  { step: sounds },
  { step: colours },
  { step: shapes },
  { step: temp }])