class Hazard {
  final String category;
  final String hazardName;
  final String whoMightBeHarmed;
  final String currentControls;
  final String furtherControls;
  final String timescale;
  final String responsiblePerson;

  const Hazard({
    required this.category,
    required this.hazardName,
    required this.whoMightBeHarmed,
    required this.currentControls,
    required this.furtherControls,
    required this.timescale,
    required this.responsiblePerson,
  });
}

final List<Hazard> garageHazards = [
  Hazard(
    category: 'Hazardous substances',
    hazardName: 'Dust - high concentrations of process dust',
    whoMightBeHarmed: 'All workers, customers and others. Inhalation can cause respiratory issues; skin/eye irritation.',
    currentControls: 'Dilution ventilation. Dust masks available (not mandatory).',
    furtherControls: '1. Set up enclosed area for sanding/grinding with LEV.\n2. Purchase "on tool" extraction systems.\n3. Mandate face masks with extraction.\n4. Consider RPE.\n5. Inspect current ventilation.\n6. Improve housekeeping (vacuum cleaners).',
    timescale: '1-6 months',
    responsiblePerson: 'Workshop Manager / Finance Director',
  ),
  Hazard(
    category: 'Work equipment',
    hazardName: 'Falling vehicles and/or components',
    whoMightBeHarmed: 'Mechanics. Crushing injuries or death if lifts/jacks fail.',
    currentControls: 'Some sporadic maintenance of lifting equipment.',
    furtherControls: '1. Implement planned inspection program.\n2. Inspect/examine all current lifting equipment.\n3. Check insurance cover.\n4. Mark SWL on all equipment.',
    timescale: '1 month',
    responsiblePerson: 'Finance Director / Workshop Manager',
  ),
  Hazard(
    category: 'Working at height',
    hazardName: 'Working in and around the inspection pit',
    whoMightBeHarmed: 'Anyone near the pit. Falls causing fractures, head injuries, or death.',
    currentControls: 'Restricted area when in use. Fixed stairs. Covered when not in use. No lone working.',
    furtherControls: '1. Purchase mobile "bridge" for safe access across pit.\n2. Add bridge to maintenance schedule.\n3. Train workers on bridge use.',
    timescale: '2 months',
    responsiblePerson: 'Workshop & Stores Managers',
  ),
  Hazard(
    category: 'Hazardous substances',
    hazardName: 'Inhaling paint mist containing isocyanates',
    whoMightBeHarmed: 'Spray booth workers. Occupational asthma.',
    currentControls: 'Enclosed booth. Air-fed masks. Compressor away from contaminants. Insurance inspections.',
    furtherControls: '1. Repaint clearance time on entrance.\n2. Check auto shut-down procedures.\n3. Consider health surveillance program.',
    timescale: '1 week - 1 month',
    responsiblePerson: 'Workshop Manager / Finance Director',
  ),
];
