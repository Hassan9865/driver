import 'package:driver/view/home/widget/info_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TripCard extends StatelessWidget {
  const TripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double titleSize = constraints.maxWidth < 350 ? 14 : 16;
        double bodySize = constraints.maxWidth < 350 ? 10 : 12;
        double smallSize = constraints.maxWidth < 350 ? 8 : 10;

        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: const Color(0xFF9ACD32).withOpacity(0.5),
              width: 1.5,
            ),
          ),
          elevation: 3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF3A4A24),
                  Color(0xFF293418),
                  Color(0xFF1E2612),
                ],
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Main Row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Side (Trip Info)
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              AppLocalizations.of(context)!.monthlyTripDetails,

                              style: TextStyle(
                                color: Colors.white,
                                fontSize: titleSize,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          // From - To
                          Row(
                            children: [
                              Flexible(
                                child: infoContainer(
                                  AppLocalizations.of(context)!.fromSwedish,

                                  bodySize,
                                  maxLines: 1,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                child: infoContainer(
                                  AppLocalizations.of(context)!.toSaudi,

                                  bodySize,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),

                          // Time
                          Row(
                            children: [
                              Flexible(
                                child: infoContainer(
                                  AppLocalizations.of(context)!.from830am,
                                  bodySize,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                child: infoContainer(
                                  AppLocalizations.of(context)!.until330pm,
                                  bodySize,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),

                          // Seat info
                          infoContainer(
                            AppLocalizations.of(context)!.seatsAvailable,

                            bodySize,
                            maxLines: 2,
                          ),
                          const SizedBox(height: 12),

                          // Book now + price
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff9ACD32),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.bookNow,

                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: bodySize,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                child: infoContainer(
                                  AppLocalizations.of(context)!.monthlyFare,

                                  bodySize,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Divider
                    Container(
                      height: 150,
                      width: 1,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.white24,
                    ),

                    // Right Side (Driver Info)
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Driver Info
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.theDriver,

                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: bodySize,
                                      ),
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.mohammed,

                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: bodySize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white24,
                                    width: 1,
                                  ),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/person.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          // Age & Nationality
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.age,

                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: smallSize,
                                      ),
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.fortyYears,

                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: smallSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.nationality,

                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: smallSize,
                                      ),
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.pakistani,

                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: smallSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),

                          // Car Info
                          Text(
                            AppLocalizations.of(context)!.theCar,

                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: bodySize,
                            ),
                          ),
                          Text(
                            'Lexus ES 2025',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: bodySize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: const DecorationImage(
                                image: AssetImage('assets/car.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
