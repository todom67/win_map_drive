# win_map_drive
Defined type to map a windows drive

## usage:

```puppet
win_map_drive{'//path/to/my/resource':
    drive_letter => 'p',
    user         => 'theuser'
}
```

This will create the p: drive mapped to //path/to/my/resource
