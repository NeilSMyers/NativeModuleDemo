import React from 'react';
import {View, Text, StyleSheet, NativeModules} from 'react-native';

const App = () => {
  const [data, setData] = React.useState('');

  React.useEffect(() => {
    NativeModules.PogChamp.getPog(data => setData(data));
  }, []);

  return (
    <View style={styles.wrap}>
      <Text style={styles.text}>
        Device Name: {NativeModules.PogChamp.deviceName}
      </Text>
      <Text style={styles.text}>{data}</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  wrap: {
    justifyContent: 'center',
    alignItems: 'center',
    flex: 1,
  },
  text: {
    fontSize: 20,
    margin: 20,
  },
});

export default App;
