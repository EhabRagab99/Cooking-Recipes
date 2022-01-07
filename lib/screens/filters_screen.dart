import 'package:flutter/material.dart';
import 'package:meals/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);
  static const routeName = '/filters-screen';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                    title: 'Gluten-free',
                    description: 'Only include gluten-free meals',
                    updateValue: (newValue) {
                      setState(() {
                        _glutenFree = newValue;
                      });
                    },
                    currentValue: _glutenFree),
                _buildSwitchListTile(
                    title: 'Lactose-free',
                    description: 'Only include lactose-free meals',
                    updateValue: (newValue) {
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    },
                    currentValue: _lactoseFree),
                _buildSwitchListTile(
                    title: 'Vegetarian',
                    description: 'Only include vegetarian meals',
                    updateValue: (newValue) {
                      setState(() {
                        _vegetarian = newValue;
                      });
                    },
                    currentValue: _vegetarian),
                _buildSwitchListTile(
                    title: 'Vegan',
                    description: 'Only include vegan meals',
                    updateValue: (newValue) {
                      setState(() {
                        _vegan = newValue;
                      });
                    },
                    currentValue: _vegan),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchListTile({
    required String title,
    required String description,
    required bool currentValue,
    required Function updateValue,
  }) {
    return SwitchListTile(
      value: currentValue,
      onChanged: updateValue as void Function(bool),
      title: Text(title),
      subtitle: Text(description),
    );
  }
}
