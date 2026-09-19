// lib/screens/home_page.dart

import 'package:flutter/material.dart';
import '../data/event_data.dart';
import '../widgets/event_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'Todos';
  String searchQuery = ''; // Nuevo estado para la búsqueda
  final TextEditingController _searchController = TextEditingController();

  final List<String> categorias = [
    'Todos',
    'Académicos',
    'Deportivos',
    'Culturales',
    'Tecnología',
    'Talleres',
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Filtrado avanzado: Combina la categoría seleccionada Y la búsqueda por texto
    List<Event> eventosMostrados = universityEvents.where((event) {
      final coincideCategoria =
          selectedCategory == 'Todos' || event.category == selectedCategory;
      final coincideBusqueda = event.name.toLowerCase().contains(
        searchQuery.toLowerCase(),
      );
      return coincideCategoria && coincideBusqueda;
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Campus Eventos'), elevation: 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Descubre tu universidad',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 16),
                // Nueva Barra de Búsqueda
                TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Buscar eventos, talleres...',
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: categorias.length,
              itemBuilder: (context, index) {
                final categoria = categorias[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ChoiceChip(
                    label: Text(categoria),
                    selected: selectedCategory == categoria,
                    onSelected: (bool selected) {
                      setState(() {
                        selectedCategory = categoria;
                      });
                    },
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '${eventosMostrados.length} eventos encontrados',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),

          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  int crossAxisCount = constraints.maxWidth > 900 ? 3 : 2;
                  return GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisExtent:
                          280, // Ajustado para el nuevo diseño de tarjeta
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: eventosMostrados.length,
                    itemBuilder: (context, index) =>
                        EventCard(event: eventosMostrados[index]),
                  );
                } else {
                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: eventosMostrados.length,
                    itemBuilder: (context, index) =>
                        EventCard(event: eventosMostrados[index]),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
