import '../models/service_model.dart';

class MockData {
  static List<CategoryModel> getCategories() {
    return [
      CategoryModel(
        id: '1',
        name: 'Engine Service',
        icon: '🔧',
        serviceCount: 15,
      ),
      CategoryModel(
        id: '2',
        name: 'Brake Repair',
        icon: '🛑',
        serviceCount: 8,
      ),
      CategoryModel(
        id: '3',
        name: 'Oil Change',
        icon: '🛢️',
        serviceCount: 5,
      ),
      CategoryModel(
        id: '4',
        name: 'Tire Service',
        icon: '⚙️',
        serviceCount: 12,
      ),
    ];
  }
  
  static List<ServiceModel> getFeaturedServices() {
    return [
      ServiceModel(
        id: '1',
        name: 'Complete Engine Overhaul',
        description: 'Professional engine repair and maintenance service at your doorstep',
        price: 299.99,
        category: 'Engine Service',
        images: ['https://via.placeholder.com/400x300/1A1A1A/00D9FF?text=Engine+Service'],
        rating: 4.8,
        reviews: 156,
        specifications: [
          'Complete engine inspection',
          'Oil and filter replacement',
          'Spark plug check',
          'Air filter cleaning',
          'Engine tuning',
        ],
      ),
      ServiceModel(
        id: '2',
        name: 'Brake System Check',
        description: 'Comprehensive brake inspection and repair service',
        price: 149.99,
        category: 'Brake Repair',
        images: ['https://via.placeholder.com/400x300/1A1A1A/00D9FF?text=Brake+Service'],
        rating: 4.9,
        reviews: 203,
        specifications: [
          'Brake pad inspection',
          'Brake fluid check',
          'Rotor inspection',
          'Caliper service',
          'Brake line check',
        ],
      ),
      ServiceModel(
        id: '3',
        name: 'Premium Oil Change',
        description: 'High-quality oil change service with synthetic oil',
        price: 79.99,
        category: 'Oil Change',
        images: ['https://via.placeholder.com/400x300/1A1A1A/00D9FF?text=Oil+Change'],
        rating: 4.7,
        reviews: 89,
        specifications: [
          'Synthetic oil replacement',
          'Oil filter change',
          'Engine cleaning',
          'Fluid level check',
          'Free inspection',
        ],
      ),
      ServiceModel(
        id: '4',
        name: 'Tire Replacement & Alignment',
        description: 'Professional tire service with wheel alignment',
        price: 199.99,
        category: 'Tire Service',
        images: ['https://via.placeholder.com/400x300/1A1A1A/00D9FF?text=Tire+Service'],
        rating: 4.6,
        reviews: 124,
        specifications: [
          'Tire inspection',
          'Wheel alignment',
          'Balancing service',
          'Pressure check',
          'Rotation included',
        ],
      ),
    ];
  }
  
  static List<ServiceModel> getAllServices() {
    return getFeaturedServices();
  }
}
