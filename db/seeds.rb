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
stressed.sequences.create!([{ step: walk, sequence_number: 1 },
  { step: feelings, sequence_number: 2 },
  { step: breathe, sequence_number: 3 },
  { step: count, sequence_number: 4 },
  { step: sounds, sequence_number: 5 }])

anxious.sequences.create!([{ step: feelings, sequence_number: 1 },
  { step: walk, sequence_number: 2 },
  { step: breathe, sequence_number: 3 },
  { step: count, sequence_number: 4 },
  { step: breathing, sequence_number: 5 }])

mindfulness.sequences.create!([{ step: breathing, sequence_number: 1 },
  { step: sounds, sequence_number: 2 },
  { step: colours, sequence_number: 3 },
  { step: shapes, sequence_number: 4 },
  { step: temp, sequence_number: 5 }])